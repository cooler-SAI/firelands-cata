/*
 * This file is part of the FirelandsCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
 * more details.
 *
 * You should have received a copy of the GNU Affero General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef LOGOPERATION_H
#define LOGOPERATION_H

#include "Define.h"
#include <memory>

class Logger;
struct LogMessage;

class FC_COMMON_API LogOperation
{
    public:
        LogOperation(Logger const* logger, std::unique_ptr<LogMessage>&& msg);
        ~LogOperation();

        int call();

    protected:
        Logger const* _logger;
        std::unique_ptr<LogMessage> _msg;
};

#endif
